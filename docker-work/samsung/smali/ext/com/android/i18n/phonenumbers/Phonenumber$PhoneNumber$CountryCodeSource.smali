.class public final enum Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
.super Ljava/lang/Enum;
.source "Phonenumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountryCodeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum greylist FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum greylist FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum greylist FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum greylist FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum blacklist UNSPECIFIED:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 43
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 45
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v3, "FROM_NUMBER_WITH_IDD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 47
    new-instance v3, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v5, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 49
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v7, "FROM_DEFAULT_COUNTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 51
    new-instance v7, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v9, "UNSPECIFIED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 41
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->$VALUES:[Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->$VALUES:[Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v0
.end method
