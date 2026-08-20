.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->$r8$lambda$d5JXUJun-Yf5kFRtBXCuouKElcY(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
