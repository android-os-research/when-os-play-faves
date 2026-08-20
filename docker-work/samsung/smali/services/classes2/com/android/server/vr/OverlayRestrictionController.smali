.class public Lcom/android/server/vr/OverlayRestrictionController;
.super Ljava/lang/Object;
.source "OverlayRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/OverlayRestrictionController$OverlayHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_VR_OVERLAY_RESTRICTION_STATE_CHANGE:I = 0xa

.field public static final TAG:Ljava/lang/String; = "OverayRestriction"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mOverlayToken:Landroid/os/IBinder;

.field public final mService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleOverlayRestriction(Lcom/android/server/vr/OverlayRestrictionController;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/OverlayRestrictionController;->handleOverlayRestriction(ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/OverlayRestrictionController;->mOverlayToken:Landroid/os/IBinder;

    .line 26
    iput-object p1, p0, Lcom/android/server/vr/OverlayRestrictionController;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/server/vr/OverlayRestrictionController;->mService:Lcom/android/server/vr/XrManagerService;

    .line 28
    new-instance p1, Lcom/android/server/vr/OverlayRestrictionController$OverlayHandler;

    invoke-direct {p1, p0}, Lcom/android/server/vr/OverlayRestrictionController$OverlayHandler;-><init>(Lcom/android/server/vr/OverlayRestrictionController;)V

    iput-object p1, p0, Lcom/android/server/vr/OverlayRestrictionController;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleOverlayRestriction(ZI)V
    .registers 4

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOverlayRestriction enabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverayRestriction"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 59
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 6

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverlayRestriction enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " exemptedPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverayRestriction"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p0, p0, Lcom/android/server/vr/OverlayRestrictionController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-static {p0, v0, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
