.class public final Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskIdFromPointSearchResult"
.end annotation


# instance fields
.field public mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 8468
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method
