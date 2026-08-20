.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/ComponentName;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$2:I

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda56;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$UGguGjY-S48V5engc2qZYralUEE(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/ComponentName;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
