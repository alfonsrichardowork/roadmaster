"use client"

import DOMPurify from "isomorphic-dompurify";
import "@/app/style/styles.scss";

type Props = {
    text: string
};

export default function DompurifyContent ({ text }: Props) {
    return (
        <div
            className="tiptap [&>iframe]:max-w-full"
            dangerouslySetInnerHTML={{
            __html: DOMPurify.sanitize(text, {
                ADD_TAGS: ['iframe'],
                ADD_ATTR: ['allowfullscreen', 'frameborder', 'scrolling', 'src', 'width', 'height', 'class'],
            }).replace(
                /<iframe([^>]*)><\/iframe>/g,
                `<div class="relative w-full md:w-3/4 mx-auto aspect-video my-4 overflow-hidden rounded">
                    <iframe class="absolute top-0 left-0 w-full h-full"$1></iframe>
                </div>`
            ),
            }}
        />
    )
}