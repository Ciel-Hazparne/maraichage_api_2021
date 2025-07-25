<?php

namespace App\Command;

use App\Repository\MesuresRepository;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;

class MesureCleanupCommand extends Command
{
    private $mesureRepository;

    protected static $defaultName = 'app:mesure:cleanup';

    public function __construct(MesuresRepository $mesureRepository)
{
    $this->mesureRepository = $mesureRepository;

    parent::__construct();
}
    protected function configure()
    {
        $this
            ->setDescription('efface de la BDD les mesures antérieures à 1 mois')
            ->addOption('dry-run', null, InputOption::VALUE_NONE, 'Dry run')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $io = new SymfonyStyle($input, $output);

        if ($input->getOption('dry-run')) {
            $io->note('Dry mode enabled');

            $count = $this->mesureRepository->countOldMesure();
        } else {
            $count = $this->mesureRepository->deleteOldMesure();
        }

        $io->success(sprintf('"%d" mesures effacées.', $count));

        return 0;
    }
}


