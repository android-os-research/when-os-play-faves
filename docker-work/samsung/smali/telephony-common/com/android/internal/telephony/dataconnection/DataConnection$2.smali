.class Lcom/android/internal/telephony/dataconnection/DataConnection$2;
.super Ljava/io/PrintWriter;
.source "DataConnection.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# virtual methods
.method public whitelist test-api flush()V
    .registers 1

    return-void
.end method

.method public whitelist test-api println(Ljava/lang/String;)V
    .registers 2

    .line 4675
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logd(Ljava/lang/String;)V

    return-void
.end method
