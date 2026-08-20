.class public final synthetic Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    invoke-static {v0, p1}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->lambda$getNalType$0(ILcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;)Z

    move-result p1

    return p1
.end method
