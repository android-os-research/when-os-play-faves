.class public Lcom/gsma/services/rcs/RcsIllegalArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "RcsIllegalArgumentException.java"


# static fields
.field private static final DELIMITER_PIPE:C = '|'

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    const-string v0, "Rcs argument is not correct"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 54
    const-class v0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 57
    return-void

    .line 55
    :cond_9
    new-instance v0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    invoke-static {p0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static extractServerException(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "message":Ljava/lang/String;
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 82
    .local v1, "delimiterIndex":I
    if-lez v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1b

    .line 83
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    :cond_1b
    return-object v0
.end method

.method private static isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method
