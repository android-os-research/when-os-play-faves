.class public final synthetic Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult$$ExternalSyntheticLambda0;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult$$ExternalSyntheticLambda0;->f$0:[Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->$r8$lambda$zTkmXs8zSHWndzagqMxQaZgXW3I([ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
