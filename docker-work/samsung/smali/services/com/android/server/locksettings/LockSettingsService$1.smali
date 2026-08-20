.class public Lcom/android/server/locksettings/LockSettingsService$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 1143
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostprocessing(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "removeUser for MaintenanceMode"

    .line 1146
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fputmMaintenanceModeCallback(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/function/Consumer;)V

    .line 1148
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/16 p1, 0x4d

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mremoveUser(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    return-void
.end method
