.class public Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
.super Landroid/os/AsyncTask;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeKeyStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public mAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public mKeystoreType:I

.field public mOperation:I

.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 672
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mOperation:I

    .line 673
    iput p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    .line 674
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    .line 675
    iput-object p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 11

    const/4 v0, 0x0

    .line 679
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 680
    iget v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mOperation:I

    const/4 v2, 0x1

    if-eqz v1, :cond_12d

    if-eq v1, v2, :cond_10

    goto/16 :goto_178

    .line 708
    :cond_10
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$fgetmKeyStoreLock(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 709
    :try_start_17
    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1e

    const/4 v3, -0x1

    goto :goto_20

    :cond_1e
    const/16 v3, 0x3f2

    .line 711
    :goto_20
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_12a

    .line 715
    :try_start_2b
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_120

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 716
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_48

    goto :goto_31

    .line 721
    :cond_48
    aget-object v6, v5, v0

    .line 723
    aget-object v5, v5, v2

    const-string v7, "USRCERT_"

    .line 724
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    .line 725
    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isCertificateEntry(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5b

    goto :goto_c9

    :cond_5b
    const-string v6, "USRCERT_"

    .line 738
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v6

    .line 740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_93

    const-string v5, "RollbackRefreshOperation"

    .line 744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NativeKeyStoreOperation - Could not retrieve user certificate from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_93
    const/4 v8, 0x0

    .line 750
    invoke-virtual {v4, v5, v6, v8, v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    move-result v5

    if-nez v5, :cond_b1

    const-string v5, "RollbackRefreshOperation"

    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NativeKeyStoreOperation - Could not delete certificate chain - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_b1
    const-string v5, "RollbackRefreshOperation"

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NativeKeyStoreOperation - certificate chain deleted successfully - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 726
    :cond_c9
    :goto_c9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 728
    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteEntry(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_108

    const-string v5, "RollbackRefreshOperation"

    .line 729
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NativeKeyStoreOperation - Entry deleted successfully - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_108
    const-string v5, "RollbackRefreshOperation"

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NativeKeyStoreOperation - Fail to delete entry - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_2b .. :try_end_11e} :catchall_125

    goto/16 :goto_31

    .line 761
    :cond_120
    :try_start_120
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 763
    monitor-exit v1

    goto :goto_178

    :catchall_125
    move-exception p0

    .line 761
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 762
    throw p0

    :catchall_12a
    move-exception p0

    .line 763
    monitor-exit v1
    :try_end_12c
    .catchall {:try_start_120 .. :try_end_12c} :catchall_12a

    throw p0

    .line 682
    :cond_12d
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$fgetmKeyStoreLock(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 684
    :try_start_134
    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_13f
    .catchall {:try_start_134 .. :try_end_13f} :catchall_180

    .line 688
    :try_start_13f
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->getPemMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 689
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_174

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_166

    goto :goto_14d

    .line 694
    :cond_166
    aget-object v6, v5, v0

    .line 696
    aget-object v5, v5, v2

    .line 699
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 698
    invoke-virtual {p0, v6, v5, v4, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->reinstallCert(Ljava/lang/String;Ljava/lang/String;[BLcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)V
    :try_end_173
    .catchall {:try_start_13f .. :try_end_173} :catchall_17b

    goto :goto_14d

    .line 703
    :cond_174
    :try_start_174
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 705
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_174 .. :try_end_178} :catchall_180

    .line 768
    :goto_178
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catchall_17b
    move-exception p0

    .line 703
    :try_start_17c
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 704
    throw p0

    :catchall_180
    move-exception p0

    .line 705
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_17c .. :try_end_182} :catchall_180

    throw p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 664
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getPemMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 784
    new-instance v1, Ljava/util/HashSet;

    .line 785
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 787
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 788
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 790
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 793
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3a
    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 794
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 795
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 796
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 801
    :cond_63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 802
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_74
    return-object v0
.end method

.method public final reinstallCert(Ljava/lang/String;Ljava/lang/String;[BLcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)V
    .registers 15

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reinstallCert - type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackRefreshOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1a3

    if-eqz p2, :cond_1a3

    if-nez p3, :cond_27

    goto/16 :goto_1a3

    .line 818
    :cond_27
    iget p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->mKeystoreType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2e

    const/4 p0, -0x1

    goto :goto_30

    :cond_2e
    const/16 p0, 0x3f2

    :goto_30
    move v7, p0

    .line 819
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alias = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "USRCERT_"

    .line 821
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "reinstallCert - Could not perform rollback of a user certificate due to keystore2 changes - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    :cond_69
    const-string v2, "CACERT_"

    .line 826
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "reinstallCert - Could not reinsert CA cert(s) in key entry - "

    const-string/jumbo v4, "reinstallCert - CA cert(s) successfully reinserted in key entry - "

    const-string/jumbo v5, "reinstallCert - Could not find user certificate in this entry - "

    const-string/jumbo v8, "reinstallCert - Could not install CA cert - "

    const-string/jumbo v9, "reinstallCert - CA cert successfully reinstalled - "

    if-eqz v2, :cond_101

    .line 827
    invoke-virtual {p4, p2, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->contains(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 833
    invoke-virtual {p4, p2, v0, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 836
    invoke-virtual {p4, p2, p1, p3, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    move-result p1

    if-nez p1, :cond_a6

    .line 837
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    .line 840
    :cond_a6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    .line 844
    :cond_ba
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    :cond_ce
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p4

    move-object v5, p3

    move-object v6, p2

    .line 849
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put([B[B[BLjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_ed

    .line 851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    .line 853
    :cond_ed
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    :cond_101
    const-string v2, "CACERT_CE_"

    .line 857
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p4

    move-object v5, p3

    move-object v6, p2

    .line 859
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put([B[B[BLjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_128

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a3

    .line 863
    :cond_128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3

    :cond_13b
    const-string v2, "CACERT_KE_"

    .line 866
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a3

    .line 867
    invoke-virtual {p4, p2, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->contains(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_18e

    .line 873
    invoke-virtual {p4, p2, v0, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_17b

    .line 876
    invoke-virtual {p4, p2, p1, p3, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->updateKeyPair(Ljava/lang/String;[B[BI)Z

    move-result p1

    if-nez p1, :cond_168

    .line 877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3

    .line 880
    :cond_168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3

    .line 884
    :cond_17b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3

    .line 888
    :cond_18e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "reinstallCert - CA cert(s) cannot be reinstalled anymore as entry has been deleted - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a3
    :goto_1a3
    return-void
.end method

.method public final removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "_#_"

    .line 772
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1b

    add-int/lit8 v0, p0, 0x3

    .line 774
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 775
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object p1
.end method
