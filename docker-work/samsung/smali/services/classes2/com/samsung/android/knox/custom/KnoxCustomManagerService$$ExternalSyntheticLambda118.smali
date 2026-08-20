.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$2:Z

    iput-object p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$2:Z

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda118;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$EKDAhG7RdRlrSFZdeoUO9QTCk4o(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
