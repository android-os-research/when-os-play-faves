.class public final synthetic Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->$r8$lambda$KGT7pUv_o66moqVk8mDIxjQG_yY(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
