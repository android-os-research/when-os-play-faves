.class Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;
.super Landroid/content/ContextWrapper;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityContext"
.end annotation


# instance fields
.field private final blacklist mConnectionId:I


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "connectionId"    # I

    .line 3357
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3358
    iput p2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    .line 3359
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->getDisplayId()I

    move-result v0

    invoke-direct {p0, p0, v0}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->setDefaultTokenInternal(Landroid/content/Context;I)V

    .line 3360
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$AccessibilityContext-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private blacklist setDefaultTokenInternal(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .line 3390
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 3392
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    .line 3393
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 3394
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    const/4 v2, 0x0

    .line 3395
    .local v2, "token":Landroid/os/IBinder;
    if-eqz v1, :cond_26

    .line 3397
    :try_start_12
    invoke-interface {v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_18

    move-object v2, v3

    .line 3401
    goto :goto_23

    .line 3398
    :catch_18
    move-exception v3

    .line 3399
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityService"

    const-string v5, "Failed to get window token"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3400
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3402
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_23
    invoke-virtual {v0, v2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    .line 3404
    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 5
    .param p1, "display"    # Landroid/view/Display;

    .line 3365
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 6
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 3371
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 3372
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x7f0

    if-eq p1, v1, :cond_9

    .line 3373
    return-object v0

    .line 3375
    :cond_9
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-direct {v1, v0, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 3382
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContextWrapper;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 3383
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x7f0

    if-eq p2, v1, :cond_9

    .line 3384
    return-object v0

    .line 3386
    :cond_9
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-direct {v1, v0, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method
