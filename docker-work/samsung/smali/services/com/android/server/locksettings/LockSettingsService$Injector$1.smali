.class public Lcom/android/server/locksettings/LockSettingsService$Injector$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field public final synthetic val$storage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .registers 3

    .line 587
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->this$0:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string/jumbo v0, "ro.lockscreen.disable.default"

    const/4 v1, 0x0

    .line 591
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 594
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "lockscreen.disabled"

    const-string v2, "1"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_14
    return-void
.end method
