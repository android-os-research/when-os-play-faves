.class public final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 446
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "E164"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 447
    new-instance v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v3, "INTERNATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 448
    new-instance v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v5, "NATIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 449
    new-instance v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v7, "RFC3966"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 445
    sput-object v7, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .registers 2

    .line 445
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .registers 1

    .line 445
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-object v0
.end method
