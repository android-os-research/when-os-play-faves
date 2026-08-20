.class public Lcom/android/server/pm/ShortcutService$MyShellCommand;
.super Landroid/os/ShellCommand;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyShellCommand"
.end annotation


# instance fields
.field public mShortcutMatchFlags:I

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 5032
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 p1, 0x0

    .line 5034
    iput p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    const/16 p1, 0xf

    .line 5036
    iput p1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method


# virtual methods
.method public final handleClearShortcuts()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5225
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 5226
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 5227
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShellCommand"

    .line 5229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd: handleClearShortcuts: user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-static {v3, v2, p0, v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mcleanUpPackageForAllLoadedUsers(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    .line 5233
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final handleGetDefaultLauncher()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5191
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 5192
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 5194
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 5201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5202
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v5, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 5203
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v4

    .line 5202
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    .line 5204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 5205
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    .line 5206
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 5207
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5211
    :cond_63
    monitor-exit v0

    return-void

    .line 5196
    :cond_65
    new-instance v1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the default launcher for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_7e
    move-exception p0

    .line 5211
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public final handleGetShortcuts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5237
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 5238
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 5239
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShellCommand"

    .line 5241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd: handleGetShortcuts: user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5244
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 5245
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    if-nez v1, :cond_49

    .line 5247
    monitor-exit v0

    return-void

    .line 5250
    :cond_49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/pm/ShortcutPackage;->dumpShortcuts(Ljava/io/PrintWriter;I)V

    .line 5251
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public final handleHasShortcutAccess()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5263
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 5264
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    .line 5265
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 5267
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    move-result v1

    .line 5268
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5269
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final handleOverrideConfig()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5168
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellCommand"

    .line 5170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleOverrideConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5173
    :try_start_21
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 5176
    monitor-exit v1

    return-void

    .line 5174
    :cond_2b
    new-instance p0, Lcom/android/server/pm/ShortcutService$CommandException;

    const-string/jumbo v0, "override-config failed.  See logcat for details."

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_34
    move-exception p0

    .line 5176
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final handleResetAllThrottling()V
    .registers 3

    const-string v0, "ShellCommand"

    const-string v1, "cmd: handleResetAllThrottling"

    .line 5162
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->resetAllThrottlingInner()V

    return-void
.end method

.method public final handleResetConfig()V
    .registers 3

    const-string v0, "ShellCommand"

    const-string v1, "cmd: handleResetConfig"

    .line 5180
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5183
    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mloadConfigurationLocked(Lcom/android/server/pm/ShortcutService;)V

    .line 5184
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final handleResetThrottling()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5152
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 5153
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    const-string v1, "ShellCommand"

    .line 5155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleResetThrottling: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 5158
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final handleUnloadUser()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5215
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 5216
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->parseOptionsLocked(Z)V

    const-string v1, "ShellCommand"

    .line 5218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd: handleUnloadUser: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5220
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/pm/ShortcutService;->handleStopUser(I)V

    .line 5221
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final handleVerifyStates()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5256
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mverifyStatesForce(Lcom/android/server/pm/ShortcutService;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p0

    .line 5258
    new-instance v0, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 5067
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5069
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 5071
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_d4

    goto/16 :goto_83

    :sswitch_17
    const-string/jumbo v3, "reset-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v1, 0x3

    goto :goto_83

    :sswitch_22
    const-string/jumbo v3, "unload-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v1, 0x5

    goto :goto_83

    :sswitch_2d
    const-string v3, "get-default-launcher"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v1, 0x4

    goto :goto_83

    :sswitch_37
    const-string/jumbo v3, "reset-throttling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    move v1, v4

    goto :goto_83

    :sswitch_42
    const-string/jumbo v3, "override-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v1, 0x2

    goto :goto_83

    :sswitch_4d
    const-string/jumbo v3, "reset-all-throttling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    move v1, v2

    goto :goto_83

    :sswitch_58
    const-string v3, "get-shortcuts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v1, 0x7

    goto :goto_83

    :sswitch_62
    const-string v3, "clear-shortcuts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/4 v1, 0x6

    goto :goto_83

    :sswitch_6c
    const-string/jumbo v3, "verify-states"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/16 v1, 0x8

    goto :goto_83

    :sswitch_78
    const-string/jumbo v3, "has-shortcut-access"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/16 v1, 0x9

    :cond_83
    :goto_83
    packed-switch v1, :pswitch_data_fe

    .line 5103
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_b8

    .line 5100
    :pswitch_8b
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleHasShortcutAccess()V

    goto :goto_b2

    .line 5097
    :pswitch_8f
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleVerifyStates()V

    goto :goto_b2

    .line 5094
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetShortcuts()V

    goto :goto_b2

    .line 5091
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleClearShortcuts()V

    goto :goto_b2

    .line 5088
    :pswitch_9b
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleUnloadUser()V

    goto :goto_b2

    .line 5085
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleGetDefaultLauncher()V

    goto :goto_b2

    .line 5082
    :pswitch_a3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetConfig()V

    goto :goto_b2

    .line 5079
    :pswitch_a7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleOverrideConfig()V

    goto :goto_b2

    .line 5076
    :pswitch_ab
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetAllThrottling()V

    goto :goto_b2

    .line 5073
    :pswitch_af
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->handleResetThrottling()V
    :try_end_b2
    .catch Lcom/android/server/pm/ShortcutService$CommandException; {:try_start_d .. :try_end_b2} :catch_b9

    :goto_b2
    const-string p0, "Success"

    .line 5109
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :goto_b8
    return p0

    :catch_b9
    move-exception p0

    .line 5106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x6001d868 -> :sswitch_78
        -0x42951a2a -> :sswitch_6c
        -0x2cad7693 -> :sswitch_62
        -0x108294ca -> :sswitch_58
        -0x853beaf -> :sswitch_4d
        -0x493cb9d -> :sswitch_42
        0xb40bca5 -> :sswitch_37
        0x46f58343 -> :sswitch_2d
        0x5427b5d9 -> :sswitch_22
        0x75140980 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 5115
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Usage: cmd shortcut COMMAND [options ...]"

    .line 5116
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5117
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut reset-throttling [--user USER_ID]"

    .line 5118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset throttling for all packages and users"

    .line 5119
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut reset-all-throttling"

    .line 5121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset the throttling state for all users"

    .line 5122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut override-config CONFIG"

    .line 5124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Override the configuration for testing (will last until reboot)"

    .line 5125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5126
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut reset-config"

    .line 5127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset the configuration set with \"update-config\""

    .line 5128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5129
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "[Deprecated] cmd shortcut get-default-launcher [--user USER_ID]"

    .line 5130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Show the default launcher"

    .line 5131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Note: This command is deprecated. Callers should query the default launcher from RoleManager instead."

    .line 5132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut unload-user [--user USER_ID]"

    .line 5135
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Unload a user from the memory"

    .line 5136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    (This should not affect any observable behavior)"

    .line 5137
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE"

    .line 5139
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Remove all shortcuts from a package, including pinned shortcuts"

    .line 5140
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5141
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut get-shortcuts [--user USER_ID] [--flags FLAGS] PACKAGE"

    .line 5142
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Show the shortcuts for a package that match the given flags"

    .line 5143
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "cmd shortcut has-shortcut-access [--user USER_ID] PACKAGE"

    .line 5145
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints \"true\" if the package can access shortcuts, \"false\" otherwise"

    .line 5146
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5148
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final parseOptionsLocked(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ShortcutService$CommandException;
        }
    .end annotation

    .line 5043
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    const-string v1, "--flags"

    .line 5044
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    if-eqz p1, :cond_60

    .line 5047
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    .line 5048
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_0

    .line 5049
    :cond_2b
    new-instance p1, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not running or locked"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5059
    :cond_49
    new-instance p0, Lcom/android/server/pm/ShortcutService$CommandException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$CommandException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5056
    :cond_60
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService$MyShellCommand;->mShortcutMatchFlags:I

    goto :goto_0

    :cond_6b
    return-void
.end method
