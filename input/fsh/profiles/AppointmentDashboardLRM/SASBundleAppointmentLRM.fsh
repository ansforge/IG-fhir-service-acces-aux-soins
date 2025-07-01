Profile: SASBundleAppointmentLRM
Parent: Bundle
Id: sas-bundle-appointment-lrm
Description: "Profil de Bundle qui représente les données de RDV à envoyer de la plateforme numérique du SAS vers les éditeurs de LRM"

* meta.profile = Canonical(sas-bundle-appointment-lrm)

* type = #transaction
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

* entry contains
    appointmententry 1..1 and
    practitionerentry 0..1 and
    organizationentry 0..1 and
    practitionerRoleentry 0..1 and
    healthcareserviceentry 0..1

* entry[appointmententry].resource only SASAppointmentLRM
* entry[appointmententry].fullUrl 1..

* entry[practitionerentry].resource only SASPractitionerLRM
* entry[practitionerentry].fullUrl 1..

* entry[organizationentry].resource only SASOrganizationLRM
* entry[organizationentry].fullUrl 1..

* entry[practitionerRoleentry].resource only SASPractitionerRoleLRM
* entry[practitionerRoleentry].fullUrl 1..

* entry[healthcareserviceentry].resource only SASHealthcareServiceLRM
* entry[healthcareserviceentry].fullUrl 1..