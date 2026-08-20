.class public Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
.super Ljava/lang/Object;
.source "WindowOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerInfo"
.end annotation


# instance fields
.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 1939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    return-void
.end method
