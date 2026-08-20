.class Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContextListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowContextListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    }
.end annotation


# instance fields
.field public final mClientToken:Landroid/app/IWindowToken;

.field public mContainer:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation
.end field

.field public mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

.field public mHasPendingConfiguration:Z

.field public mLastReportedConfig:Landroid/content/res/Configuration;

.field public mLastReportedDisplay:I

.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerUid:I

.field public mPackageName:Ljava/lang/String;

.field public final mType:I

.field public final synthetic this$0:Lcom/android/server/wm/WindowContextListenerController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClientToken(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/app/IWindowToken;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastReportedConfig(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastReportedDisplay(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOptions(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOwnerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportConfigToWindowTokenClient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportConfigToWindowTokenClient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->unregister()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->updateContainer(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 259
    iput p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 270
    invoke-static {p2}, Landroid/app/IWindowToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    .line 271
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 272
    iput p4, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOwnerUid:I

    .line 273
    iput p5, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mType:I

    .line 274
    iput-object p6, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    .line 276
    new-instance p1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;-><init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient-IA;)V

    .line 278
    :try_start_22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->linkToDeath()V

    .line 279
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_49

    .line 281
    :catch_28
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz p1, :cond_49

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const p4, -0x780dafbb

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p5, p6

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const-string p1, "Could not register window container listener token=%s, container=%s"

    invoke-static {p3, p4, p6, p1, p5}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget p2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOwnerUid:I

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    const/4 v0, -0x1

    .line 331
    iput v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    return-void
.end method

.method public getWindowContainer()Lcom/android/server/wm/WindowContainer;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient()V

    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient()V

    return-void
.end method

.method public onRemoved()V
    .registers 6

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    if-eqz v0, :cond_53

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 426
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFromClient()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 436
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 438
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_2a

    .line 440
    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_2a
    if-eqz v1, :cond_34

    .line 444
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->updateContainer(Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 449
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->unlinkToDeath()V

    .line 451
    :try_start_39
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v0}, Landroid/app/IWindowToken;->onWindowTokenRemoved()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_4f

    .line 453
    :catch_3f
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x568f326

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Could not report token removal to the window token client."

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->unregister()V

    return-void

    .line 423
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid client token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {p0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final register()V
    .registers 2

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register(Z)V

    return-void
.end method

.method public final register(Z)V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    if-eqz v1, :cond_17

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    iget-object v1, v1, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p0}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V

    return-void

    .line 318
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid client token: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reportConfigToWindowTokenClient()V
    .registers 2

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final reportConfigToWindowTokenClient(Landroid/content/res/Configuration;)V
    .registers 7

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    if-eqz v0, :cond_c2

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 364
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    invoke-static {v1}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    .line 368
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    return-void

    :cond_2b
    if-eqz p1, :cond_2e

    goto :goto_34

    .line 375
    :cond_2e
    iget-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 376
    :goto_34
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    if-nez v1, :cond_43

    .line 378
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 380
    :cond_43
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    iget v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    if-ne v0, v1, :cond_53

    .line 385
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    return-void

    .line 393
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 394
    iput v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 398
    :try_start_5a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_76

    .line 399
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 400
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object p1

    .line 401
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/android/server/DssController;->scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {p1, v1, v0}, Landroid/app/IWindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_bf

    .line 406
    :cond_76
    iget v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOwnerUid:I

    .line 407
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v1, v3, :cond_aa

    const-string v1, "WindowManager"

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportConfigToWindowTokenClient, displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 409
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_aa
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v1, p1, v0}, Landroid/app/IWindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;I)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_af} :catch_b0

    goto :goto_bf

    .line 415
    :catch_b0
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz p1, :cond_bf

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x74237fce

    const/4 v1, 0x0

    const-string v3, "Could not report config changes to the window token client."

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_bf
    :goto_bf
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    return-void

    .line 352
    :cond_c2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid client token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {p0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextListenerImpl{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v1}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregister()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {p0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 305
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 306
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->clear()V

    .line 308
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register()V

    return-void
.end method
