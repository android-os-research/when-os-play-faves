.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda77;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda77;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda77;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda77;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$az4TTiV_LH6VL7Nwe-C9ohvJBuM(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
