.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda135;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Lcom/samsung/android/knox/custom/StatusbarIconItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda135;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda135;->f$1:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda135;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda135;->f$1:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$RwqQhixf7i3100UEF8eeEMeDKZ4(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Lcom/samsung/android/knox/custom/StatusbarIconItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
