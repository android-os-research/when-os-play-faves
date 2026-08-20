.class public final enum Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;
.super Ljava/lang/Enum;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UsimServiceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsimExtService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

.field public static final enum blacklist FIVEGS_OPERATOR_PLMN_LIST:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 176
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    const-string v1, "FIVEGS_OPERATOR_PLMN_LIST"

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->FIVEGS_OPERATOR_PLMN_LIST:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    aput-object v0, v1, v2

    .line 175
    sput-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->$VALUES:[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput p3, p0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->mValue:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;
    .registers 2

    .line 175
    const-class v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;
    .registers 1

    .line 175
    sget-object v0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->$VALUES:[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .registers 1

    .line 185
    iget p0, p0, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->mValue:I

    return p0
.end method
