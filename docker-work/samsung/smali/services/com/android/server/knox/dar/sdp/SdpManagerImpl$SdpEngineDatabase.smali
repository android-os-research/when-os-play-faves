.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpEngineDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;,
        Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;
    }
.end annotation


# static fields
.field public static final MAX_RETRY:I = 0x3

.field public static final TO_READ:I = 0x0

.field public static final TO_WRITE:I = 0x1


# instance fields
.field public mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

.field public mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static bridge synthetic -$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)Landroid/util/SparseArray;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->updateEngineListLocked()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    .line 3714
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3711
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    .line 3712
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    .line 3715
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    .line 3716
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method


# virtual methods
.method public final getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 2

    .line 3744
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getEngineListLocked()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3732
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->-$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 3736
    :cond_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_18

    const-string p0, "SdpManagerImpl"

    const-string v1, "getEngineListLocked :: no engine found"

    .line 3737
    invoke-static {p0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_18
    return-object p0
.end method

.method public final removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2

    .line 3728
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->-$$Nest$mremoveEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method public final storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 2

    .line 3724
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;->-$$Nest$mupdateEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result p0

    return p0
.end method

.method public final updateEngineListLocked()I
    .registers 1

    .line 3720
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->-$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)I

    move-result p0

    return p0
.end method
