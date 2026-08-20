.class public Lcom/android/server/integrity/serializer/RuleIndexingDetails;
.super Ljava/lang/Object;
.source "RuleIndexingDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/integrity/serializer/RuleIndexingDetails$IndexType;
    }
.end annotation


# static fields
.field public static final APP_CERTIFICATE_INDEXED:I = 0x2

.field public static final DEFAULT_RULE_KEY:Ljava/lang/String; = "N/A"

.field public static final NOT_INDEXED:I = 0x0

.field public static final PACKAGE_NAME_INDEXED:I = 0x1


# instance fields
.field public mIndexType:I

.field public mRuleKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    const-string p1, "N/A"

    .line 50
    iput-object p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    .line 56
    iput-object p2, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndexType()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    return p0
.end method

.method public getRuleKey()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    return-object p0
.end method
