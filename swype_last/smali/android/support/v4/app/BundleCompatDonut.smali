.class public final Landroid/support/v4/app/BundleCompatDonut;
.super Ljava/lang/Object;
.source "BundleCompatDonut.java"


# static fields
.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field public static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field public static sPutIBinderMethodFetched:Z


# direct methods
.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 39
    sget-boolean v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    if-nez v1, :cond_1f

    .line 41
    :try_start_6
    const-class v1, Landroid/os/Bundle;

    const-string/jumbo v3, "getIBinder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    sput-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1d} :catch_32

    .line 46
    :goto_1d
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    .line 49
    :cond_1f
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_49

    .line 51
    :try_start_23
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_31} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_31} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_31} :catch_4b

    .line 58
    :goto_31
    return-object v1

    .line 43
    :catch_32
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to retrieve getIBinder method"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 52
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3d
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :goto_3e
    const-string/jumbo v1, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    move-object v1, v2

    .line 58
    goto :goto_31

    .line 52
    :catch_4b
    move-exception v0

    goto :goto_3e

    :catch_4d
    move-exception v0

    goto :goto_3e
.end method
