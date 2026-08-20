.class public final enum Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 35
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "INVALID_COUNTRY_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 41
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v3, "NOT_A_NUMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 47
    new-instance v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v5, "TOO_SHORT_AFTER_IDD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 52
    new-instance v5, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v7, "TOO_SHORT_NSN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 56
    new-instance v7, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v9, "TOO_LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 31
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .registers 1

    .line 31
    sget-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method
