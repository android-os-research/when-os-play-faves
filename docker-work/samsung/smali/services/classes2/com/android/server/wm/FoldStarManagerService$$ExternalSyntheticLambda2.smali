.class public final synthetic Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FixedAspectRatioController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FixedAspectRatioController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/FixedAspectRatioController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/FixedAspectRatioController;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/wm/FoldStarManagerService;->$r8$lambda$NnZlN8JjGZC6UST5vcroIdnioIQ(Lcom/android/server/wm/FixedAspectRatioController;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
