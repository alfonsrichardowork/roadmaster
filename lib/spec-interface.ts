export interface SpecificationProp {
  parentname: string
  child: ChildSpecificationProp[]
}

export interface ChildSpecificationProp {
  childname: string
  value: string
  slug: string
  notes: string
  unit: string
  subParentName: string
}

export const uploadsprefix = '/uploads'