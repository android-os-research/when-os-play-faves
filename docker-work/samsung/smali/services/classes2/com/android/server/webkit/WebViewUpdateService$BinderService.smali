.class public Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 237
    :try_start_12
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    throw p0

    .line 227
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: changeProviderAndSetting() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebViewUpdateService"

    .line 231
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 298
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "WebViewUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 299
    :cond_f
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->dumpState(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableMultiProcess(Z)V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_24

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 290
    :try_start_12
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->enableMultiProcess(Z)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    throw p0

    .line 280
    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: enableMultiProcess() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebViewUpdateService"

    .line 284
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 265
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->grantVisibilityToCaller(Ljava/lang/String;I)V

    :cond_15
    return-object v0
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .registers 1

    .line 256
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    .line 257
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_a
    return-object p0
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final grantVisibilityToCaller(Ljava/lang/String;I)V
    .registers 9

    .line 210
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 213
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const-wide/16 v1, 0x0

    .line 212
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 214
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 215
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 214
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    return-void
.end method

.method public isMultiProcessEnabled()Z
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result p0

    return p0
.end method

.method public notifyRelroCreationCompleted()V
    .registers 3

    .line 169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x40d

    if-eq v0, v1, :cond_11

    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    return-void

    .line 174
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 176
    :try_start_15
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->notifyRelroCreationCompleted()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 154
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 4

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 196
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    .line 198
    iget-object v1, v0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_21

    .line 199
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 199
    invoke-virtual {p0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->grantVisibilityToCaller(Ljava/lang/String;I)V

    :cond_21
    return-object v0

    .line 193
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create a WebView from the SystemServer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
