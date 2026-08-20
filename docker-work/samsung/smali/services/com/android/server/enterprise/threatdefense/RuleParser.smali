.class public Lcom/android/server/enterprise/threatdefense/RuleParser;
.super Ljava/lang/Object;
.source "RuleParser.java"


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "|"

.field public static final JSON_TAG_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field public static final JSON_TAG_PROCESS_PACKAGE_PUBLIC_PEM:Ljava/lang/String; = "pkg_pem"

.field public static final JSON_TAG_PROCESS_POLICY_VERSION:Ljava/lang/String; = "version"

.field public static final JSON_TAG_PROCESS_PROC_LIST:Ljava/lang/String; = "process_proc_list"

.field public static final JSON_TAG_PROC_LIST:Ljava/lang/String; = "proc_list"

.field public static final TAG:Ljava/lang/String; = "RuleParser"


# instance fields
.field public mPacakagePublicSignature:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPolicyVersion:Ljava/lang/String;

.field public mProcLength:I

.field public final mProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessProcLength:I

.field public final mProcessProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "pkg"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    const-string/jumbo p1, "pkg_pem"

    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    const-string/jumbo p1, "version"

    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    .line 36
    new-instance p1, Lorg/json/JSONArray;

    const-string/jumbo v1, "proc_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 37
    :goto_3f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 38
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_58

    .line 40
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 43
    :cond_5b
    iget-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    .line 45
    new-instance p1, Lorg/json/JSONArray;

    const-string/jumbo v2, "process_proc_list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 46
    :goto_6f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_8b

    .line 47
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_88

    .line 49
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 52
    :cond_8b
    iget-object p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcLength:I

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackagePublicSignature()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    return-object p0
.end method

.method public getProcList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    if-eq v0, v1, :cond_13

    goto :goto_16

    .line 72
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    return-object p0

    .line 69
    :cond_16
    :goto_16
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RuleParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessProcList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcLength:I

    if-eq v0, v1, :cond_13

    goto :goto_16

    .line 80
    :cond_13
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    return-object p0

    .line 77
    :cond_16
    :goto_16
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RuleParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid process proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-boolean v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v2, :cond_6a

    .line 96
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 100
    :cond_51
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 106
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
