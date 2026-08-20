.class public final synthetic Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;->f$0:F

    check-cast p1, Lcom/android/server/DssController$PairConfiguration;

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->$r8$lambda$UMP3jxNKQ-lJBk-FaeN6b1mcROM(FLcom/android/server/DssController$PairConfiguration;)V

    return-void
.end method
