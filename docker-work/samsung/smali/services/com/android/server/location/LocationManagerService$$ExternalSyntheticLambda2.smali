.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->$r8$lambda$uF7b_mBXNU5SEZNMxWv7H1zebvg(Lcom/android/server/location/LocationManagerService;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method
