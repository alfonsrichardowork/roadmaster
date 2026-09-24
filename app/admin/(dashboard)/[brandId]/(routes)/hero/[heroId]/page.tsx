import prismadb from "@/lib/prismadb";
import { HeroForm } from "./components/hero-form";

// @next-codemod-ignore Cache Components adoption: this segment temporarily allows blocking.
// Remove this opt-out after verifying the segment passes validation without it.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;

const HeroPage = async (
  props: {
    params: Promise<{ heroId: string }>
  }
) => {
  const params = await props.params;
  const onehero = await prismadb.hero.findUnique({
    where: {
      id: params.heroId,
    }
  });

  return ( 
    <div className="flex-col">
      <div className="flex-1 space-y-4 p-8 pt-6">
        <HeroForm 
          initialData={onehero}
        />
      </div>
    </div>
  );
}

export default HeroPage;

