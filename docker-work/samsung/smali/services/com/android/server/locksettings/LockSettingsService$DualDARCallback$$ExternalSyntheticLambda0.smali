.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->$r8$lambda$mvYiuqd_Cy7rY6D046LtoRu1y-M(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;Landroid/os/IBinder;)V

    return-void
.end method
