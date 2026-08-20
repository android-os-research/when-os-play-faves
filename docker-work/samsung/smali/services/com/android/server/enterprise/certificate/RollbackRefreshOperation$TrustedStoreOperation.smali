.class public Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
.super Landroid/os/AsyncTask;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustedStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public mOperation:I

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;


# direct methods
.method public static synthetic $r8$lambda$d5JXUJun-Yf5kFRtBXCuouKElcY(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->lambda$doInBackground$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)V"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 598
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mOperation:I

    .line 599
    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mAliases:Ljava/util/List;

    .line 600
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mCerts:Ljava/util/List;

    .line 601
    iput p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$doInBackground$0()Ljava/lang/Boolean;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ") "

    const-string v1, "TrustedStoreOperation("

    const-string v2, "TrustedStoreOperation "

    const-string v3, "RollbackRefreshOperation"

    .line 609
    :try_start_8
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4

    .line 611
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    if-nez v5, :cond_25

    .line 613
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 614
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_24} :catch_e6
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_24} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_24} :catch_ae

    return-object p0

    .line 618
    :cond_25
    :try_start_25
    iget v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mOperation:I

    const/4 v7, 0x1

    if-eqz v6, :cond_43

    if-eq v6, v7, :cond_2d

    goto :goto_62

    .line 626
    :cond_2d
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mAliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 627
    invoke-interface {v5, v7}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    goto :goto_33

    .line 620
    :cond_43
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mCerts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_49
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    new-array v9, v7, [Ljava/security/cert/Certificate;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 622
    invoke-static {v9}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    goto :goto_49

    .line 633
    :cond_62
    :goto_62
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_64} :catch_96
    .catch Ljava/security/cert/CertificateException; {:try_start_25 .. :try_end_64} :catch_82
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_64} :catch_6a
    .catchall {:try_start_25 .. :try_end_64} :catchall_68

    .line 641
    :try_start_64
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_e6
    .catch Ljava/lang/AssertionError; {:try_start_64 .. :try_end_67} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_67} :catch_ae

    return-object v5

    :catchall_68
    move-exception v5

    goto :goto_aa

    :catch_6a
    move-exception v5

    .line 639
    :try_start_6b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_68

    .line 641
    :goto_7d
    :try_start_7d
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_80} :catch_e6
    .catch Ljava/lang/AssertionError; {:try_start_7d .. :try_end_80} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_80} :catch_ae

    goto/16 :goto_f9

    :catch_82
    move-exception v5

    .line 637
    :try_start_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :catch_96
    move-exception v5

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_83 .. :try_end_a9} :catchall_68

    goto :goto_7d

    .line 641
    :goto_aa
    :try_start_aa
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 642
    throw v5
    :try_end_ae
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_ae} :catch_e6
    .catch Ljava/lang/AssertionError; {:try_start_aa .. :try_end_ae} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v2

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    :catch_ca
    move-exception v2

    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    :catch_e6
    move-exception p0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_f9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    .line 606
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 656
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 590
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
