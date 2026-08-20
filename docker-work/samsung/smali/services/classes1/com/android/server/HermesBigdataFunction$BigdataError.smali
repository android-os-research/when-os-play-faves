.class public final enum Lcom/android/server/HermesBigdataFunction$BigdataError;
.super Ljava/lang/Enum;
.source "HermesBigdataFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HermesBigdataFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BigdataError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/HermesBigdataFunction$BigdataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum NO_ERROR:Lcom/android/server/HermesBigdataFunction$BigdataError;


# instance fields
.field private final errCode:I

.field private final reason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 47
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const-string v3, "No Error"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->NO_ERROR:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 48
    new-instance v1, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v3, "ERR_NOT_SUPPORTED"

    const/4 v4, 0x1

    const/16 v5, -0x64

    const-string v6, "Bigdata function is not supported"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 49
    new-instance v3, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v5, "ERR_SEND_DIAGMON"

    const/4 v6, 0x2

    const/16 v7, -0x65

    const-string/jumbo v8, "sending diagmon agent is failed"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 50
    new-instance v5, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v7, "ERR_UNKNOWN"

    const/4 v8, 0x3

    const/16 v9, -0x3e8

    const-string v10, "Unkonwn error"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 51
    new-instance v7, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v9, "ERR_FILE_NOT_FOUND"

    const/4 v10, 0x4

    const/16 v11, -0x3e9

    const-string v12, "File is not found"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 52
    new-instance v9, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v11, "ERR_FILE_CREATED_FAILED"

    const/4 v12, 0x5

    const/16 v13, -0x3ea

    const-string v14, "File creation has failed"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 53
    new-instance v11, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v13, "ERR_PERMISSION_DENIED"

    const/4 v14, 0x6

    const/16 v15, -0x3eb

    const-string v12, "File permission denied"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 54
    new-instance v12, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v13, "ERR_ZIP_EXCEPTION"

    const/4 v15, 0x7

    const/16 v14, -0x3ec

    const-string v10, "Zip API is failed"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 55
    new-instance v10, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v13, "ERR_IO_EXCEPTION"

    const/16 v14, 0x8

    const/16 v15, -0x3ed

    const-string v8, "Some I/O operation is failed"

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 56
    new-instance v8, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v13, "ERR_NULLPOINTER_EXCEPTION"

    const/16 v15, 0x9

    const/16 v14, -0x3ee

    const-string v6, "Null pointer exception has occured"

    invoke-direct {v8, v13, v15, v14, v6}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 57
    new-instance v6, Lcom/android/server/HermesBigdataFunction$BigdataError;

    const-string v13, "ERR_INTERRUPTION_EXCEPTION"

    const/16 v14, 0xa

    const/16 v15, -0x3ef

    const-string v4, "Some interrupt has occured"

    invoke-direct {v6, v13, v14, v15, v4}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    const/16 v4, 0xb

    new-array v4, v4, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 46
    sput-object v4, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p4, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HermesBigdataFunction$BigdataError;
    .registers 2

    .line 46
    const-class v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-object p0
.end method

.method public static values()[Lcom/android/server/HermesBigdataFunction$BigdataError;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-virtual {v0}, [Lcom/android/server/HermesBigdataFunction$BigdataError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    return-object v0
.end method


# virtual methods
.method public errCode()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    return p0
.end method

.method public reason()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    return-object p0
.end method
