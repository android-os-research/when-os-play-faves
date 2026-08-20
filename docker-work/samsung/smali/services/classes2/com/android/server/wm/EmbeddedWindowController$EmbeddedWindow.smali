.class public Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"

# interfaces
.implements Lcom/android/server/wm/InputTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/EmbeddedWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedWindow"
.end annotation


# instance fields
.field public final mClient:Landroid/view/IWindow;

.field public final mDisplayId:I

.field public mFocusGrantToken:Landroid/os/IBinder;

.field public final mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mHostWindowState:Lcom/android/server/wm/WindowState;

.field public mInputChannel:Landroid/view/InputChannel;

.field public mIsOverlay:Z

.field public final mName:Ljava/lang/String;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public mSession:Lcom/android/server/wm/Session;

.field public mShowUserId:I

.field public final mWindowType:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindow;Lcom/android/server/wm/WindowState;IIIILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    .line 212
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    .line 213
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 214
    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    .line 215
    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_13

    .line 216
    iget-object p2, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 217
    :goto_14
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 218
    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 219
    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 220
    iput p7, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    .line 221
    iput p8, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    .line 222
    iput-object p9, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    if-eqz p4, :cond_3c

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3e

    :cond_3c
    const-string p2, ""

    .line 226
    :goto_3e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Embedded{"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    .line 229
    iget p1, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mShowUserId:I

    return-void
.end method


# virtual methods
.method public canScreenshotIme()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 373
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000006L

    .line 375
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 376
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10900000003L

    const-string p0, "EmbeddedWindow"

    .line 377
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 378
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 379
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationHandle()Landroid/view/InputApplicationHandle;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 241
    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1b

    .line 244
    :cond_d
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 269
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    return p0
.end method

.method public getFocusGrantToken()Landroid/os/IBinder;
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getIWindow()Landroid/view/IWindow;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    return-object p0
.end method

.method public getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0
.end method

.method public getInputChannelToken()Landroid/os/IBinder;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz p0, :cond_9

    .line 309
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsOverlay()Z
    .registers 1

    .line 300
    iget-boolean p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    return p0
.end method

.method public getPid()I
    .registers 1

    .line 288
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 293
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    return p0
.end method

.method public getWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final handleTap(Z)V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_d

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V

    :cond_d
    return-void
.end method

.method public handleTapOutsideFocusInsideSelf()V
    .registers 2

    const/4 v0, 0x1

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    return-void
.end method

.method public handleTapOutsideFocusOutsideSelf()V
    .registers 2

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    return-void
.end method

.method public isInputMethodClientFocus(II)Z
    .registers 4

    .line 362
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    if-ne p1, v0, :cond_a

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    if-ne p2, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onRemoved()V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_17

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    :cond_17
    return-void
.end method

.method public openInputChannel()Landroid/view/InputChannel;
    .registers 3

    .line 249
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.method public receiveFocusFromTapOutside()Z
    .registers 1

    .line 322
    iget-boolean p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    return p0
.end method

.method public setIsOverlay()V
    .registers 2

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    return-void
.end method

.method public shouldControlIme()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public unfreezeInsetsAfterStartInput()V
    .registers 1

    return-void
.end method
