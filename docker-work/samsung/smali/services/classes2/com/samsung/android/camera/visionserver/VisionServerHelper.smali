.class public Lcom/samsung/android/camera/visionserver/VisionServerHelper;
.super Ljava/lang/Object;
.source "VisionServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MEMBER_NAME:Ljava/lang/String; = "packageInfo"

.field public static final MODULE_NAME:Ljava/lang/String; = "policylist"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.camera"

.field public static final RESPONSE_BODY_RESULT:Ljava/lang/String; = "result"

.field public static final RESPONSE_RESULT_NO_NEED_TO_DOWNLOAD:Ljava/lang/String; = "VSA00201"

.field public static final RESPONSE_RESULT_NO_RESULT:Ljava/lang/String; = "VSA00200"

.field public static final RESPONSE_RESULT_SUCCESS:Ljava/lang/String; = "0"

.field public static final RESPONSE_VALUE_PROPERTIES:Ljava/lang/String; = "properties"

.field public static final RESPONSE_VALUE_RESULTCODE:Ljava/lang/String; = "resultCode"

.field public static final RESPONSE_VALUE_VERSION:Ljava/lang/String; = "version"

.field public static final SERVICE_NAME:Ljava/lang/String; = "cameraserviceV2"

.field public static final TAG:Ljava/lang/String; = "VisionServerHelper"


# instance fields
.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public mResponsePackageListVersionCallback:Lretrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Callback<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public final mVisionServerCallback:Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmVisionServerCallback(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mVisionServerCallback:Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAppInfoRepository(Lcom/samsung/android/camera/visionserver/VisionServerHelper;Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->updateAppInfoRepository(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 52
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;)V
    .registers 5

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper$1;-><init>(Lcom/samsung/android/camera/visionserver/VisionServerHelper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mResponsePackageListVersionCallback:Lretrofit2/Callback;

    .line 132
    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mVisionServerCallback:Lcom/samsung/android/camera/visionserver/VisionServerHelper$visionServerCallback;

    .line 133
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "VisionServerHelper"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 134
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    return-void
.end method


# virtual methods
.method public final getBaseUri()Ljava/lang/String;
    .registers 2

    .line 139
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 140
    sget-boolean p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->DEBUG:Z

    if-eqz p0, :cond_13

    const-string p0, "https://asset.stg.visioncloud.samsung.com.cn"

    return-object p0

    :cond_13
    const-string p0, "https://asset.visioncloud.samsung.com.cn"

    return-object p0

    .line 146
    :cond_16
    sget-boolean p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->DEBUG:Z

    if-eqz p0, :cond_1d

    const-string p0, "https://asset.stg.samsungvisioncloud.com"

    return-object p0

    :cond_1d
    const-string p0, "https://asset.samsungvisioncloud.com"

    return-object p0
.end method

.method public final getVisionServerService()Lcom/samsung/android/camera/visionserver/VisionServerApi;
    .registers 4

    .line 155
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/samsung/android/camera/visionserver/UserAgentInterceptor;

    invoke-direct {v1}, Lcom/samsung/android/camera/visionserver/UserAgentInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 156
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 158
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 160
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    .line 162
    const-class v0, Lcom/samsung/android/camera/visionserver/VisionServerApi;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/visionserver/VisionServerApi;

    return-object p0
.end method

.method public requestPackageListInfo(Ljava/lang/String;)V
    .registers 14

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestPackageListInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionServerHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "deviceModel"

    const-string v5, "matchOrDefault"

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;

    const-string/jumbo v3, "version"

    const-string v4, "latest"

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.samsung.android.camera"

    .line 178
    invoke-static {p1}, Lcom/samsung/android/camera/visionserver/AuthenticationHelper;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 179
    new-instance v11, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;

    const-string p1, "cameraserviceV2"

    const-string/jumbo v2, "policylist"

    invoke-direct {v11, p1, v2, v0}, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 183
    :try_start_47
    invoke-virtual {p0}, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->getVisionServerService()Lcom/samsung/android/camera/visionserver/VisionServerApi;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 187
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v9, "application/json"

    move-object v7, v10

    .line 183
    invoke-interface/range {v2 .. v11}, Lcom/samsung/android/camera/visionserver/VisionServerApi;->getPackageListVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;)Lretrofit2/Call;

    move-result-object p1

    .line 194
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->mResponsePackageListVersionCallback:Lretrofit2/Callback;

    invoke-interface {p1, p0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 196
    sget-boolean p0, Lcom/samsung/android/camera/visionserver/VisionServerHelper;->DEBUG:Z

    if-eqz p0, :cond_95

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPackageListVersion "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_7f} :catch_80

    goto :goto_95

    :catch_80
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    return-void
.end method

.method public final updateAppInfoRepository(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v1, "packageInfo"

    .line 206
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 208
    :goto_12
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 209
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2e
    return-object p0
.end method
