import { ChildSpecificationProp, SpecificationProp } from "@/app/[locale]/products/[productSlug]/page";
import { Table, TableBody, TableCell, TableRow } from "./ui/table";
import React from "react";

interface Props {
  spec: SpecificationProp[];
}

export default function SpecificationTable({ spec }: Props) {
  let counter = 1;
  const allNotes: string[] = [];

  const sortedSpec = spec
    .map((parent) => ({
      ...parent,
      child: [...parent.child].sort((a, b) =>
        a.subParentName.localeCompare(b.subParentName)
      ),
    }))
    .sort((a, b) => a.parentname.localeCompare(b.parentname));

  return (
    <div>
      {sortedSpec.map((parentGroup) => {
        const parentName = parentGroup.parentname;

        const groupedBySubParent = parentGroup.child.reduce(
          (acc, child) => {
            const key = child.subParentName || "Other";
            if (!acc[key]) acc[key] = [];
            acc[key].push(child);
            return acc;
          },
          {} as Record<string, ChildSpecificationProp[]>
        );

        const sortedSubParents = Object.keys(groupedBySubParent).sort();
        const otherChildren = groupedBySubParent["Other"] || [];

        return (
          <div key={parentName} className="mb-10">
            <div className="pb-8 text-center font-bold md:text-3xl text-xl">
              {parentName}
            </div>

            <div className="grid md:grid-cols-2 gap-10">
              
              {/* LEFT COLUMN (no subparent) */}
              <div>
                <Table className="w-full">
                  <TableBody>
                    {otherChildren.map((child) => (
                      <TableRow key={`${parentName}-${child.childname}`}>
                        <TableCell className="font-semibold">
                          {child.childname}
                          {child.notes?.trim() && (
                            <sup className="text-xs ml-1">({counter++})</sup>
                          )}
                        </TableCell>

                        <TableCell className="text-end">
                          {child.value?.trim()
                            ? `${child.value} ${child.unit || ""}`
                            : "-"}
                        </TableCell>
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              </div>

              {/* RIGHT COLUMN (with subparent) */}
              <div>
                <Table className="w-full">
                  <TableBody>
                    {sortedSubParents.map((subParentName) => {
                      const children = groupedBySubParent[subParentName];
                      if (subParentName === "Other") return null;

                      return (
                        
                        <React.Fragment key={`${parentName}-${subParentName}`}>
                          <TableRow
                            key={`${parentName}-${subParentName}`}
                            className="p-0 font-bold bg-foreground/30"
                          >
                            <TableCell>
                              {subParentName}
                            </TableCell>
                            <TableCell />
                          </TableRow>

                          {children?.map((child) => {
                            return (
                              <TableRow
                                key={`${parentName}-${child.childname}`}
                              >
                                <TableCell className="pl-8 font-semibold">
                                  {child.childname}
                                  {child.notes?.trim() && (
                                    <sup className="text-xs ml-1">
                                      ({counter++})
                                    </sup>
                                  )}
                                </TableCell>

                                <TableCell
                                  className={`text-end`}
                                >
                                  {child.value?.trim()
                                    ? `${child.value} ${child.unit || ""}`
                                    : "-"}
                                </TableCell>
                              </TableRow>
                            );
                          })}
                        </React.Fragment>
                      );
                    })}
                  </TableBody>
                </Table>
              </div>

            </div>
          </div>
        );
      })}

      {/* Notes */}
      {allNotes.length > 0 && (
        <div className="mt-4">
          {allNotes.map((note, idx) => (
            <div key={idx} className="text-xs">
              ({idx + 1}) {note}
            </div>
          ))}
        </div>
      )}
    </div>
  );
}