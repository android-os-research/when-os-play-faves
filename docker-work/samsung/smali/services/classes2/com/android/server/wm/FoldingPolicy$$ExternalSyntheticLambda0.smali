.class public final synthetic Lcom/android/server/wm/FoldingPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FoldingPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FoldingPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Lcom/android/server/wm/FoldingPolicy;->$r8$lambda$bvMwrZqL_q9DpG94EwQeLovma-4(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
