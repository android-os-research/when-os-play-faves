.class public final enum Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
.super Ljava/lang/Enum;
.source "SemCsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CsgListCat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

.field public static final enum blacklist UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 25
    new-instance v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    new-instance v1, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v3, "ALLOWED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    new-instance v3, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v5, "OPERATOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    new-instance v5, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const-string v7, "CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24
    sput-object v7, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->$VALUES:[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .registers 2

    .line 24
    const-class v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->$VALUES:[Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SemCsgInfo$CsgListCat;

    return-object v0
.end method
