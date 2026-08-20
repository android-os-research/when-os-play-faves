.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$fPeiZ5HNpWH_kVtenEi8FxnsJe8(ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method
