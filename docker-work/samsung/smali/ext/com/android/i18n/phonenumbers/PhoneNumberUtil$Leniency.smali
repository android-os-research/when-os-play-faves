.class public abstract enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum greylist POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 565
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;

    const-string v1, "POSSIBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1-IA;)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 582
    new-instance v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;

    const-string v4, "VALID"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2-IA;)V

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 608
    new-instance v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    const-string v6, "STRICT_GROUPING"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3-IA;)V

    sput-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 645
    new-instance v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;

    const-string v8, "EXACT_GROUPING"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;-><init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4-IA;)V

    sput-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 560
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    sput-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 560
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .registers 1

    .line 560
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract blacklist verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;)Z
.end method
