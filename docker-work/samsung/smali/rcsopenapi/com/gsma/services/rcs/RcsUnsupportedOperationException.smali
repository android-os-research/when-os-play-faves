.class public Lcom/gsma/services/rcs/RcsUnsupportedOperationException;
.super Ljava/lang/UnsupportedOperationException;
.source "RcsUnsupportedOperationException.java"


# static fields
.field private static final DELIMITER_PIPE:C = '|'

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    const-string v0, "Rcs unsupported operation"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsUnsupportedOperationException;
        }
    .end annotation

    .line 58
    const-class v0, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 61
    return-void

    .line 59
    :cond_9
    new-instance v0, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;

    invoke-static {p0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/gsma/services/rcs/RcsUnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static extractServerException(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "message":Ljava/lang/String;
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 85
    .local v1, "delimiterIndex":I
    if-lez v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1b

    .line 86
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 88
    :cond_1b
    return-object v0
.end method

.method private static isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 73
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
