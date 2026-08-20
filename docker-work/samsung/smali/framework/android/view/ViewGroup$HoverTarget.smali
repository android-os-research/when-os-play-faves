.class final Landroid/view/ViewGroup$HoverTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoverTarget"
.end annotation


# static fields
.field private static final greylist-max-o MAX_RECYCLED:I = 0x20

.field private static greylist-max-o sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist-max-o child:Landroid/view/View;

.field public greylist-max-o next:Landroid/view/ViewGroup$HoverTarget;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9280
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 9290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9291
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;
    .registers 4
    .param p0, "child"    # Landroid/view/View;

    .line 9294
    if-eqz p0, :cond_24

    .line 9299
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9300
    :try_start_5
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    if-nez v1, :cond_f

    .line 9301
    new-instance v1, Landroid/view/ViewGroup$HoverTarget;

    invoke-direct {v1}, Landroid/view/ViewGroup$HoverTarget;-><init>()V

    .local v1, "target":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_1d

    .line 9303
    .end local v1    # "target":Landroid/view/ViewGroup$HoverTarget;
    :cond_f
    nop

    .line 9304
    .restart local v1    # "target":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    sput-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 9305
    sget v2, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    .line 9306
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 9308
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_21

    .line 9309
    iput-object p0, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 9310
    return-object v1

    .line 9308
    .end local v1    # "target":Landroid/view/ViewGroup$HoverTarget;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 9295
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .registers 5

    .line 9314
    iget-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 9318
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9319
    :try_start_7
    sget v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_19

    .line 9320
    sget-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    iput-object v2, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 9321
    sput-object p0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 9322
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    goto :goto_1b

    .line 9324
    :cond_19
    iput-object v3, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 9326
    :goto_1b
    iput-object v3, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 9327
    monitor-exit v0

    .line 9328
    return-void

    .line 9327
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 9315
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already recycled once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
