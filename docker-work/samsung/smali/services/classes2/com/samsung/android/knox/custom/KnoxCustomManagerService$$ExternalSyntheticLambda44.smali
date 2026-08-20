.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$Mwd7ObDxQwZ-ipKVb-jkKyKX-0Q(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
