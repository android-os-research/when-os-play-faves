.class public Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LocalLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnlyLocalLog"
.end annotation


# instance fields
.field private final blacklist mLog:Lcom/android/internal/telephony/LocalLog;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/LocalLog;)V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/internal/telephony/LocalLog;

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist reverseDump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    return-void
.end method
