.class public Lcom/android/server/integrity/model/RuleMetadata;
.super Ljava/lang/Object;
.source "RuleMetadata.java"


# instance fields
.field public final mRuleProvider:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRuleProvider()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mRuleProvider:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/server/integrity/model/RuleMetadata;->mVersion:Ljava/lang/String;

    return-object p0
.end method
