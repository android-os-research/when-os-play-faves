.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;->f$1:Z

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;->f$1:Z

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda80;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$qcShqAgQfxbGwuPsmnJ_A6zgXKc(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZI)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
