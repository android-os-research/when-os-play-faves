.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$3:I

    iput p5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$4:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$2:I

    iget v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$3:I

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda127;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$BNXNf1R2Ir0Od9Firud7oN0i2X8(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;III)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
