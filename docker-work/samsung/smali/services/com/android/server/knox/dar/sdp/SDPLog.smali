.class public final Lcom/android/server/knox/dar/sdp/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final ENABLED:Z = false

.field public static final REFLECT:Z = true

.field public static final TAG:Ljava/lang/String; = "SDPLog"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 23
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 1

    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .registers 2

    const/4 v0, 0x0

    .line 63
    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public static i()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .registers 1

    return-void
.end method
