.class public interface abstract Lcom/samsung/android/camera/visionserver/VisionServerApi;
.super Ljava/lang/Object;
.source "VisionServerApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListFiles;,
        Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;,
        Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListVO;,
        Lcom/samsung/android/camera/visionserver/VisionServerApi$SearchData;
    }
.end annotation


# virtual methods
.method public abstract getPackageListVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-client-model"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-client-os"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-client-build"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-client-csc"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-client-app-id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-client-app-version"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Content-Type"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "appid"
        .end annotation
    .end param
    .param p9    # Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camera/visionserver/VisionServerApi$PolicyListBody;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "visioncloud/v3/asset"
    .end annotation
.end method
