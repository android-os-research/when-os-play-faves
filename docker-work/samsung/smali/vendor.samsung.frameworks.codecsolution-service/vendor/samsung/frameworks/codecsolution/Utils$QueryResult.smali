.class public final enum Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

.field public static final enum FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

.field public static final enum NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

.field public static final enum SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 22
    new-instance v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    const-string v1, "SERVER_IS_NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 23
    new-instance v1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    const-string v3, "NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 24
    new-instance v3, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    const-string v5, "FOUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 21
    const/4 v5, 0x3

    new-array v5, v5, [Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0
.end method

.method public static values()[Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    .registers 1

    .line 21
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->$VALUES:[Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    invoke-virtual {v0}, [Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0
.end method
