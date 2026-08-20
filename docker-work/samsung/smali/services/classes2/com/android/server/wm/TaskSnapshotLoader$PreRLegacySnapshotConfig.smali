.class public Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreRLegacySnapshotConfig"
.end annotation


# instance fields
.field public final mForceLoadReducedJpeg:Z

.field public final mScale:F


# direct methods
.method public constructor <init>(FZ)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    .line 70
    iput-boolean p2, p0, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    return-void
.end method
