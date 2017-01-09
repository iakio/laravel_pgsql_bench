<?php
use Illuminate\Database\Connectors\PostgresConnector;
use Illuminate\Database\PostgresConnection;
class SlowCaseTest extends \PHPUnit_Framework_TestCase
{
    /** @test */
    public function benchConnection()
    {
        $config = [
            'driver' => 'pgsql',
            'database' => 'postgres',
            'charset' => 'utf-8',
            'timezone' => 'UTC',
            'schema' => ['public', '$user'],
            'application_name' => 'My App'
        ];
        $connector = new PostgresConnector();
        $connection = new PostgresConnection($connector->connect($config));
        $connection->select("select 1");
    }
}
