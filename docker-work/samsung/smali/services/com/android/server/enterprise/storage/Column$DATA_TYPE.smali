.class public final enum Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
.super Ljava/lang/Enum;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/storage/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/storage/Column$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 39
    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v5, "NUMERIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v5, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v7, "BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v7, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v9, "REAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 38
    sput-object v9, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .registers 2

    .line 38
    const-class v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .registers 1

    .line 38
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0
.end method
