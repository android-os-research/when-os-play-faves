.class final enum Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
.super Ljava/lang/Enum;
.source "KeyCustomizationInfoXmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 77
    new-instance v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v5, "UNKNOWN_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    new-instance v5, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const-string v7, "FILE_NOT_FOUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 76
    sput-object v7, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .registers 2

    .line 76
    const-class v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->$VALUES:[Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-virtual {v0}, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->code:I

    return p0
.end method
