.class Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;
.super Landroid/os/AsyncTask;
.source "NetworkConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/network/NetworkConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/game/network/NetworkConnector;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/network/NetworkConnector;Ljava/lang/String;)V
    .registers 3
    .param p2, "url"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->this$0:Lcom/samsung/android/game/network/NetworkConnector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->mUrl:Ljava/lang/String;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->sendGet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendGet()Ljava/lang/String;
    .registers 13

    .line 168
    const/4 v0, -0x1

    .line 169
    .local v0, "responseCode":I
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendGet(), Sending GET request to URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->this$0:Lcom/samsung/android/game/network/NetworkConnector;

    invoke-virtual {v1}, Lcom/samsung/android/game/network/NetworkConnector;->isNetworkConnected()Z

    move-result v1

    const-string v2, "sendGet(), Failed to send GET request : Network is NOT connected."

    const/4 v3, 0x0

    if-nez v1, :cond_32

    .line 172
    const-string v1, "sendGet(), Failed to send GET request : Network is NOT connected."

    .line 173
    .local v1, "msg":Ljava/lang/String;
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v3

    .line 177
    .end local v1    # "msg":Ljava/lang/String;
    :cond_32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_48

    .line 178
    const-string v1, "sendGet(), Failed to send GET request : Unsuitable performing network operations on the UI thread"

    .line 179
    .restart local v1    # "msg":Ljava/lang/String;
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sendGet(), Failed to send GET request : Unsuitable performing network operations on the UI thread"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-object v3

    .line 183
    .end local v1    # "msg":Ljava/lang/String;
    :cond_48
    iget-object v1, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_58

    .line 184
    const-string v1, "sendGet(), Failed to send GET request : mUrl is null"

    .line 185
    .restart local v1    # "msg":Ljava/lang/String;
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sendGet(), Failed to send GET request : mUrl is null"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-object v3

    .line 189
    .end local v1    # "msg":Ljava/lang/String;
    :cond_58
    const/4 v1, 0x0

    .line 190
    .local v1, "response":Ljava/lang/String;
    const/4 v3, 0x0

    .line 191
    .local v3, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 193
    .local v4, "progressMark":I
    :try_start_5b
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 194
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 195
    .local v6, "con":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x1

    .line 198
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 199
    const/4 v4, 0x2

    .line 202
    const-string v7, "Accept"

    const-string v8, "application/json;charset=UTF-8"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v7, "User-Agent"

    iget-object v8, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->this$0:Lcom/samsung/android/game/network/NetworkConnector;

    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->mRequestHeader:Lcom/samsung/android/game/network/RequestHeader;
    invoke-static {v8}, Lcom/samsung/android/game/network/NetworkConnector;->access$200(Lcom/samsung/android/game/network/NetworkConnector;)Lcom/samsung/android/game/network/RequestHeader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/game/network/RequestHeader;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v4, 0x3

    .line 206
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    move v0, v7

    .line 207
    const/4 v4, 0x4

    .line 208
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendGet(), Response Code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 211
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 212
    const/4 v4, 0x5

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v7, "responseBuilder":Ljava/lang/StringBuilder;
    :goto_bf
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "inputLine":Ljava/lang/String;
    if-eqz v8, :cond_d1

    .line 217
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 220
    :cond_d1
    const/4 v4, 0x6

    .line 222
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 223
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendGet(), Response, responseCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_107} :catch_108

    .line 233
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "con":Ljavax/net/ssl/HttpsURLConnection;
    .end local v7    # "responseBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "inputLine":Ljava/lang/String;
    goto :goto_151

    .line 225
    :catch_108
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->this$0:Lcom/samsung/android/game/network/NetworkConnector;

    invoke-virtual {v6}, Lcom/samsung/android/game/network/NetworkConnector;->isNetworkConnected()Z

    move-result v6

    if-nez v6, :cond_119

    .line 227
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_151

    .line 229
    :cond_119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendGet(), Cannot get correct response, progressMark: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "msg":Ljava/lang/String;
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", responseCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_151
    if-eqz v3, :cond_163

    .line 237
    :try_start_153
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_157

    .line 241
    goto :goto_163

    .line 238
    :catch_157
    move-exception v2

    .line 239
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "exception while BufferReader closing"

    .line 240
    .local v5, "msg":Ljava/lang/String;
    # getter for: Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/network/NetworkConnector;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "exception while BufferReader closing"

    invoke-static {v6, v7}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_163
    :goto_163
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->sendGet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
