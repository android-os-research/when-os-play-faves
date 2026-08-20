.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCujType:I

.field private final blacklist mDeferMonitor:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceOnly:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mTimeout:J

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object p0
.end method

.method private constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;Z)V
    .registers 11
    .param p1, "cuj"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "surfaceOnly"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p9, "deferMonitor"    # Z

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    .line 990
    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    .line 991
    iput-wide p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    .line 992
    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 993
    iput-boolean p6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    .line 994
    if-eqz p7, :cond_11

    .line 995
    move-object v0, p7

    goto :goto_1d

    .line 996
    :cond_11
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    .line 997
    iput-object p8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 998
    iput-boolean p9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    .line 999
    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->validate()V

    .line 1000
    if-eqz p6, :cond_2d

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_31

    :cond_2d
    invoke-virtual {p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_31
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    .line 1001
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLcom/android/internal/jank/InteractionJankMonitor$Configuration-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;Z)V

    return-void
.end method

.method private blacklist validate()V
    .registers 7

    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, "shouldThrow":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .local v1, "msg":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1008
    const/4 v0, 0x1

    .line 1009
    const-string v2, "Invalid tag; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_10
    iget-wide v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    .line 1012
    const/4 v0, 0x1

    .line 1013
    const-string v2, "Invalid timeout value; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :cond_1e
    iget-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v2, :cond_3d

    .line 1016
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2c

    .line 1017
    const/4 v0, 0x1

    .line 1018
    const-string v2, "Must pass in a context if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1021
    :cond_36
    const/4 v0, 0x1

    .line 1022
    const-string v2, "Must pass in a valid surface control if only instrument surface; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 1025
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1026
    :cond_47
    const/4 v0, 0x1

    .line 1027
    const-string v2, "Null view or unattached view while instrumenting view; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    :cond_4d
    :goto_4d
    if-nez v0, :cond_50

    .line 1033
    return-void

    .line 1031
    :cond_50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1046
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 1054
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist isSurfaceOnly()Z
    .registers 2

    .line 1039
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    return v0
.end method

.method public blacklist shouldDeferMonitor()Z
    .registers 2

    .line 1061
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    return v0
.end method
