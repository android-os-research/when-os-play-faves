.class public Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;
.super Ljava/lang/Object;
.source "VisionServerHelper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/visionserver/VisionServerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VisionServerHelper"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onServerError()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p1, "onResponse response.errorBody(): "

    const-string v0, "VisionServerHelper"

    .line 82
    :try_start_5
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_13e

    const-string/jumbo p1, "onResponse:"

    .line 83
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo p2, "resultCode"

    .line 85
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "0"

    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string/jumbo p2, "properties"

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string/jumbo v1, "version"

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "files"

    .line 90
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 91
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListFiles;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListFiles;

    if-eqz p1, :cond_1b9

    .line 94
    invoke-static {}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v1
    :try_end_69
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_69} :catch_17e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_69} :catch_17e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_69} :catch_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_69} :catch_17e

    const-string/jumbo v2, "onResponse: try download "

    if-eqz v1, :cond_8d

    .line 95
    :try_start_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListFiles;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 97
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_9f
    new-instance v1, Lcom/samsung/android/camera/visionserver/DownloadHelper;

    invoke-direct {v1}, Lcom/samsung/android/camera/visionserver/DownloadHelper;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListFiles;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/visionserver/DownloadHelper;->downloadToJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 102
    iget-object v1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {v1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {v2, p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$mupdateAppInfoRepository(Lcom/samsung/android/camera/visionserver/VisionServerHelper;Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onListReceived(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1b9

    :cond_bf
    const-string p1, "JsonObject is null"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onServerError()V

    goto/16 :goto_1b9

    :cond_cf
    const-string p1, "VSA00201"

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse no need to download. resultCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onNoNeedToDownload()V

    goto/16 :goto_1b9

    :cond_f7
    const-string p1, "VSA00200"

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11f

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse no query result code has return. resultCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onNoNeedToDownload()V

    goto/16 :goto_1b9

    .line 115
    :cond_11f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse resultCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onServerError()V

    goto :goto_1b9

    .line 119
    :cond_13e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onServerError()V
    :try_end_17d
    .catch Ljava/lang/NullPointerException; {:try_start_6e .. :try_end_17d} :catch_17e
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_17d} :catch_17e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6e .. :try_end_17d} :catch_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_17d} :catch_17e

    goto :goto_1b9

    :catch_17e
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResponse error "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object p2, Lcom/samsung/android/camera/Logger$ID;->VISION_SERVER_RECEIVER:Lcom/samsung/android/camera/Logger$ID;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;->this$0:Lcom/samsung/android/camera/visionserver/VisionServerHelper;

    invoke-static {p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->-$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;->onServerError()V

    :cond_1b9
    :goto_1b9
    return-void
.end method
